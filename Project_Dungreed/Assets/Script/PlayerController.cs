using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor.Rendering.LookDev;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float max_speed;
    public float jump_power;
    bool is_jump = false;

    Rigidbody2D rigid;
    Animator animator;
    SpriteRenderer spriteRenderer;

    void Awake()
    {
        rigid = GetComponent<Rigidbody2D>();
        animator = GetComponent<Animator>();
        spriteRenderer = GetComponent<SpriteRenderer>();
    }

    void Update()
    {
        // 키 떼면 멈춤
        if (Input.GetButtonUp("Horizontal"))
        {
            rigid.velocity = new Vector2(0, rigid.velocity.y);
        }
        // 점프

        if (Input.GetButtonDown("Jump") && !is_jump)
        {
            rigid.AddForce(Vector2.up * jump_power, ForceMode2D.Impulse);
            is_jump = true;
        }


        // 걷기 애니메이션
        animator.SetInteger("Horizon", (int)Input.GetAxisRaw("Horizontal"));
        if (animator.GetInteger("Horizon") == -1)
        {
            spriteRenderer.flipX = true;

        }
        else if (animator.GetInteger("Horizon") == 1)
        {
            spriteRenderer.flipX = false;

        }

        //if (rigid.velocity.normalized.x == 0)
        //{
        //    animator.SetBool("walking", false);
        //}
        //else
        //{
        //    animator.SetBool("walking", true);
        //}

        // 점프 애니메이션
        animator.SetBool("IsJump", is_jump);



    }

    void FixedUpdate()
    {
        // 이동
        float h = Input.GetAxisRaw("Horizontal");
        rigid.AddForce(Vector2.right * h, ForceMode2D.Impulse);

        if (rigid.velocity.x > max_speed)
            rigid.velocity = new Vector2(max_speed, rigid.velocity.y);
        if (rigid.velocity.x < max_speed * (-1))
            rigid.velocity = new Vector2(max_speed * (-1), rigid.velocity.y);


        // 레이 캐스트(2단점프 방지)
        if (rigid.velocity.y < 0 && is_jump)
        {
            Debug.DrawRay(rigid.position, Vector3.down, new Color(0, 1, 0));
            RaycastHit2D rayhit = Physics2D.Raycast(rigid.position, Vector3.down, 0.5f, LayerMask.GetMask("Level"));


            if (rayhit.collider != null)
            {
                is_jump = false;
            }
            else
            {
                Debug.Log("No ground detected");
            }
        }
    }
}