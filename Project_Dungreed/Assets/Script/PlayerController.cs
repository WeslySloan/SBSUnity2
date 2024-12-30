using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    private float moveSpeed = 5.0f;
        private Vector3 moveDirection = Vector3.zero;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float x = Input.GetAxis("Horizontal");

        float y = Input.GetAxis("Vertical");  // 수직이동

        moveDirection = new Vector3 (x, y, 0);

        transform.position += moveDirection * moveSpeed * Time.deltaTime;
    }
}
