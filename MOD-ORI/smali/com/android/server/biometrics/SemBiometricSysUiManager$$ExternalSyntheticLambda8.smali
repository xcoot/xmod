.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;IIII)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$2:I

    iput p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$1:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$2:I

    iput p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$1:I

    .line 11
    .line 12
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$2:I

    .line 13
    .line 14
    iget p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$3:I

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    .line 25
    .line 26
    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$1:I

    .line 27
    .line 28
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$2:I

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$3:I

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v3, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/List;

    .line 36
    .line 37
    check-cast v3, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    :try_start_1
    iget-object v5, v4, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 56
    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget v4, v4, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I

    .line 62
    .line 63
    if-ne v1, v4, :cond_0

    .line 64
    .line 65
    :cond_1
    const/16 v4, 0x3e9

    .line 66
    .line 67
    if-eq v2, v4, :cond_2

    .line 68
    .line 69
    invoke-interface {v5, v2, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onEvent(II)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :catch_0
    move-exception v4

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-interface {v5, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onTryAgainPressed(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :goto_1
    :try_start_2
    const-string v5, "BiometricSysUiManager"

    .line 82
    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string/jumbo v7, "notifySysUiEvent: "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    throw p0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 116
    .line 117
    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$1:I

    .line 118
    .line 119
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$2:I

    .line 120
    .line 121
    iget p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;->f$3:I

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 127
    .line 128
    const-string/jumbo v4, "hide: "

    .line 129
    .line 130
    .line 131
    const-string v5, "BiometricSysUiManager"

    .line 132
    .line 133
    if-eqz v3, :cond_4

    .line 134
    .line 135
    const-string v3, ", "

    .line 136
    .line 137
    invoke-static {v1, v2, v4, v3, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v3, p0, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-nez v3, :cond_5

    .line 149
    .line 150
    const-string/jumbo p0, "hide: No exist ID, "

    .line 151
    .line 152
    .line 153
    invoke-static {v1, p0, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_5
    :try_start_3
    iget-object v3, v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 158
    .line 159
    invoke-interface {v3, v1, v2, p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->hideBiometricDialog(III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :catch_1
    move-exception p0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    const/4 p0, -0x1

    .line 184
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    .line 185
    .line 186
    .line 187
    :goto_3
    return-void

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
