using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Doorkey : MonoBehaviour, IInteract
{
    // Item
    // 문과 연결된 id 정보값
    public int id;

    public void Interact()
    {
        DoorManager.Instance.UnlockDoor(id);
    }
}
