.class public final synthetic Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;ILandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    const-string/jumbo v2, "restore(): invalid operation "

    .line 12
    .line 13
    .line 14
    const-string v3, "Cancelling pending save dialog for "

    .line 15
    .line 16
    const-string v4, "Restoring save dialog for "

    .line 17
    .line 18
    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 19
    .line 20
    iget-object v6, v5, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    .line 21
    .line 22
    invoke-interface {v6, p0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const-string v7, "SaveUi"

    .line 27
    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v2, "restore("

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, "): got token "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, " instead of "

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object p0, v5, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_0
    iget-object v6, v0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    .line 69
    .line 70
    iget v8, v5, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    .line 71
    .line 72
    iget-boolean v9, v0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 73
    .line 74
    iget-object v10, v0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    .line 75
    .line 76
    const/16 v11, 0x46e

    .line 77
    .line 78
    invoke-static {v11, v6, v10, v8, v9}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const/4 v8, 0x1

    .line 83
    if-eq v1, v8, :cond_3

    .line 84
    .line 85
    const/4 v3, 0x2

    .line 86
    if-eq v1, v3, :cond_1

    .line 87
    .line 88
    const/16 p0, 0xb

    .line 89
    .line 90
    :try_start_0
    invoke-virtual {v6, p0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 91
    .line 92
    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 112
    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_2
    invoke-virtual {v6, v8}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_3
    const/4 v1, 0x5

    .line 138
    invoke-virtual {v6, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 139
    .line 140
    .line 141
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 142
    .line 143
    if-eqz v1, :cond_4

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    .line 163
    :goto_0
    iget-object p0, v0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 164
    .line 165
    invoke-virtual {p0, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 166
    .line 167
    .line 168
    const/4 p0, 0x4

    .line 169
    iput p0, v5, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :goto_1
    iget-object v0, v0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 173
    .line 174
    invoke-virtual {v0, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_5
    const-string/jumbo p0, "onPendingSaveUi("

    .line 179
    .line 180
    .line 181
    const-string v0, "): no save ui"

    .line 182
    .line 183
    const-string v2, "AutofillUI"

    .line 184
    .line 185
    invoke-static {v1, p0, v0, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :goto_2
    return-void
.end method
