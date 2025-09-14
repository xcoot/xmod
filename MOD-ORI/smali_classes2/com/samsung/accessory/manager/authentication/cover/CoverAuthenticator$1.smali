.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$session:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->val$session:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 12
    .line 13
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v1, v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->val$session:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "accessory_cover_uri"

    .line 30
    .line 31
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    xor-int/2addr v0, v1

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->this$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->val$session:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Landroid/content/Context;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 62
    .line 63
    :cond_0
    iget-object p0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->disableSetting()V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void

    .line 69
    :pswitch_0
    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 70
    .line 71
    const-string v1, "SAccessoryManager_CoverAuthenticator"

    .line 72
    .line 73
    const-string/jumbo v2, "onAuthenticationStarting"

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->this$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-ge v1, v0, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->this$0:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 92
    .line 93
    iget-boolean v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 94
    .line 95
    if-nez v1, :cond_2

    .line 96
    .line 97
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->val$session:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->this$0:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;->val$session:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 114
    .line 115
    iput-object p0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 116
    .line 117
    :goto_0
    return-void

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
