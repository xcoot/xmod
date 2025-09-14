.class public final synthetic Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 8
    iget-object v1, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 10
    iget p0, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$2:I

    .line 12
    const-string/jumbo v2, "reboot,RescueParty"

    .line 15
    const-string v3, "RescueParty"

    .line 17
    :try_start_0
    const-class v4, Landroid/os/PowerManager;

    .line 19
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/os/PowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const-string v4, ""

    .line 27
    const-string v5, " by "

    .line 29
    if-eqz v0, :cond_1

    .line 31
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    if-nez v1, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 53
    goto :goto_3

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    const-string/jumbo v0, "sys.powerctl"

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    if-nez v1, :cond_2

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_3

    .line 82
    :goto_2
    invoke-static {p0, v1, v0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :goto_3
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 88
    iget-object v1, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 90
    iget p0, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;->f$2:I

    .line 92
    const-string/jumbo v2, "reboot,RescueParty"

    .line 95
    const-string v3, "RescueParty"

    .line 97
    :try_start_2
    const-class v4, Landroid/os/PowerManager;

    .line 99
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/os/PowerManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    const-string v4, ""

    .line 107
    const-string v5, " by "

    .line 109
    if-eqz v0, :cond_4

    .line 111
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    if-nez v1, :cond_3

    .line 118
    goto :goto_4

    .line 119
    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    :goto_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 133
    goto :goto_7

    .line 134
    :catchall_1
    move-exception v0

    .line 135
    goto :goto_6

    .line 136
    :cond_4
    const-string/jumbo v0, "sys.powerctl"

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    if-nez v1, :cond_5

    .line 146
    goto :goto_5

    .line 147
    :cond_5
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 151
    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 158
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    goto :goto_7

    .line 162
    :goto_6
    invoke-static {p0, v1, v0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :goto_7
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
