.class public final Lcom/android/server/wm/MultiWindowPointerEventListener$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_3

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sparse-switch v2, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :sswitch_0
    const-string v2, "com.samsung.systemui.statusbar.EXPANDED"

    .line 19
    .line 20
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x2

    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string v2, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 30
    .line 31
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v1, p1

    .line 39
    goto :goto_0

    .line 40
    :sswitch_2
    const-string v2, "com.samsung.systemui.statusbar.ANIMATING"

    .line 41
    .line 42
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v1, v0

    .line 50
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    .line 60
    .line 61
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    .line 62
    .line 63
    :cond_3
    :goto_1
    return-void

    .line 64
    nop

    .line 65
    :sswitch_data_0
    .sparse-switch
        -0x241fab39 -> :sswitch_2
        0x9468bc0 -> :sswitch_1
        0x70549e10 -> :sswitch_0
    .end sparse-switch

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
