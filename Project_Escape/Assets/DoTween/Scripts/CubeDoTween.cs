using DG.Tweening;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;



public class CubeDotween : MonoBehaviour
{
    Sequence sequence = DOTween.Sequence();

    // Start is called before the first frame update
    void Start()
    {



       sequence.Append(
             transform.DOMove(new Vector3(10, 0, 0), 1).SetRelative().SetLoops(-1, LoopType.Yoyo).SetEase(Ease.OutExpo))
            .Join(transform.DORotate(new Vector3(0, 90, 0), 1).SetLoops(2, LoopType.Restart).SetEase(Ease.OutExpo))
            .Join(transform.DOScale(new Vector3(1.2f, 1.2f, 1.2f), 1).SetLoops(3, LoopType.Incremental).SetEase(Ease.OutExpo));


        transform.DOMove(new Vector3(10, 0, 0), 1)
            .SetRelative()
            .SetLoops(-1, LoopType.Yoyo)
            .SetEase(Ease.OutExpo);

        transform.DORotate(new Vector3(0, 90, 0), 1)
            .SetLoops(2, LoopType.Restart)
            .SetEase(Ease.OutExpo);

        transform.DOScale(new Vector3(1.2f, 1.2f, 1.2f), 1)
            .SetLoops(3, LoopType.Incremental)
            .SetEase(Ease.OutExpo);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
