.class public final Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public mCalledMediaSessionByLongpress:Z

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 7
    .line 8
    const/16 p1, 0x18

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 18
    .line 19
    const/16 p1, 0x19

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onKeyUp(Landroid/view/KeyEvent;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "PhoneWindowManagerExt"

    .line 11
    .line 12
    const-string v1, "call media session by up"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/high16 v1, -0x80000000

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->sendBroadcastIfNeeded(Landroid/view/KeyEvent;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v0, "PhoneWindowManagerExt"

    .line 43
    .line 44
    const-string v1, "call media session by up"

    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/high16 v1, -0x80000000

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    .line 65
    .line 66
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->sendBroadcastIfNeeded(Landroid/view/KeyEvent;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongPress(JLandroid/view/KeyEvent;I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldHandleVolumeLongpress:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "PhoneWindowManagerExt"

    .line 15
    .line 16
    const-string v2, "call media session by longpress"

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-static {p3, v2, v3, v4, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/high16 v3, -0x80000000

    .line 44
    .line 45
    invoke-virtual {v0, v2, v3, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(JLandroid/view/KeyEvent;I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 55
    .line 56
    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldHandleVolumeLongpress:Z

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    const-string v1, "PhoneWindowManagerExt"

    .line 61
    .line 62
    const-string v2, "call media session by longpress"

    .line 63
    .line 64
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-static {p3, v2, v3, v4, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const/high16 v3, -0x80000000

    .line 90
    .line 91
    invoke-virtual {v0, v2, v3, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(JLandroid/view/KeyEvent;I)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPress(JLandroid/view/KeyEvent;I)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/high16 p2, 0x10000000

    .line 11
    .line 12
    and-int/2addr p1, p2

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 19
    .line 20
    const/4 p3, -0x1

    .line 21
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/high16 p2, 0x10000000

    .line 30
    .line 31
    and-int/2addr p1, p2

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 36
    .line 37
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 38
    .line 39
    const/4 p3, -0x1

    .line 40
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onReset()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "PhoneWindowManagerExt"

    .line 11
    .line 12
    const-string v1, "call media session by reset"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    new-instance v0, Landroid/view/KeyEvent;

    .line 22
    .line 23
    const/16 v8, 0x19

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v7, 0x1

    .line 27
    move-object v2, v0

    .line 28
    move-wide v3, v5

    .line 29
    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/high16 v2, -0x80000000

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {v1, v0, v2, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    .line 48
    .line 49
    :cond_0
    return-void

    .line 50
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const-string v0, "PhoneWindowManagerExt"

    .line 55
    .line 56
    const-string v1, "call media session by reset"

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    new-instance v0, Landroid/view/KeyEvent;

    .line 66
    .line 67
    const/16 v8, 0x18

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v7, 0x1

    .line 71
    move-object v2, v0

    .line 72
    move-wide v3, v5

    .line 73
    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/high16 v2, -0x80000000

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    invoke-virtual {v1, v0, v2, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->mCalledMediaSessionByLongpress:Z

    .line 92
    .line 93
    :cond_1
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final supportLongPress()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
