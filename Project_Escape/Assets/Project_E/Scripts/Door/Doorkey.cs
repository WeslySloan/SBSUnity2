using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Doorkey : MonoBehaviour, IInteract
{
    // Item
    // ���� ����� id ������
    public int id;

    public void Interact()
    {
        DoorManager.Instance.UnlockDoor(id);
    }
}
