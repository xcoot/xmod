.class public final Lcom/android/server/smartclip/SpenGestureManagerService$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    float-to-int v1, v1

    .line 11
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v2, "Pen DoubleTap : x="

    .line 14
    .line 15
    const-string v3, ", y="

    .line 16
    .line 17
    const-string v4, ", action="

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v2, "SpenGestureManagerService"

    .line 35
    .line 36
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const-string p1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    .line 40
    .line 41
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v5, 0x0

    .line 52
    const-string v6, "getSealedState"

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v3, 0x1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    .line 65
    .line 66
    const-string v4, "getSealedState"

    .line 67
    .line 68
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string/jumbo v5, "true"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_0

    .line 84
    .line 85
    const-string/jumbo p0, "now KNOX state : can\'t excute Double Tap"

    .line 86
    .line 87
    .line 88
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 95
    .line 96
    .line 97
    return v3

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 109
    .line 110
    new-instance v2, Landroid/graphics/Point;

    .line 111
    .line 112
    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 113
    .line 114
    .line 115
    iput-object v2, p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastDoubleTapPosition:Landroid/graphics/Point;

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$2;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Lcom/android/server/smartclip/SpenGestureManagerService$4;

    .line 122
    .line 123
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    .line 125
    .line 126
    return v3
.end method
