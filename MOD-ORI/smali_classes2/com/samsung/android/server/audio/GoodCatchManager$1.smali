.class public final Lcom/samsung/android/server/audio/GoodCatchManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/server/audio/GoodCatchManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/GoodCatchManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onStart(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "onStart "

    .line 7
    .line 8
    .line 9
    const-string v1, "AS.GoodCatchManager"

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    const-string/jumbo v0, "onStart "

    .line 21
    .line 22
    .line 23
    const-string v1, "AS.GoodCatchManager"

    .line 24
    .line 25
    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    aget-object v2, v0, v1

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    .line 43
    .line 44
    aput-boolean v3, p0, v1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    aget-object v1, v0, v3

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    .line 58
    .line 59
    aput-boolean v3, p0, v3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v1, 0x2

    .line 63
    aget-object v2, v0, v1

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    .line 74
    .line 75
    aput-boolean v3, p0, v1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 v1, 0x3

    .line 79
    aget-object v0, v0, v1

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    .line 90
    .line 91
    aput-boolean v3, p0, v1

    .line 92
    .line 93
    :cond_3
    :goto_0
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStop(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "onStop "

    .line 7
    .line 8
    .line 9
    const-string v1, "AS.GoodCatchManager"

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    const-string/jumbo v0, "onStop "

    .line 21
    .line 22
    .line 23
    const-string v1, "AS.GoodCatchManager"

    .line 24
    .line 25
    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    aget-object v2, v0, v1

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    .line 42
    .line 43
    aput-boolean v1, p0, v1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v2, 0x1

    .line 47
    aget-object v3, v0, v2

    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    .line 58
    .line 59
    aput-boolean v1, p0, v2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v2, 0x2

    .line 63
    aget-object v3, v0, v2

    .line 64
    .line 65
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    .line 74
    .line 75
    aput-boolean v1, p0, v2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 v2, 0x3

    .line 79
    aget-object v0, v0, v2

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    .line 90
    .line 91
    aput-boolean v1, p0, v2

    .line 92
    .line 93
    :cond_3
    :goto_0
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
