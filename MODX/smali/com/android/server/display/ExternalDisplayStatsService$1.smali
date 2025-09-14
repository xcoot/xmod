.class public final Lcom/android/server/display/ExternalDisplayStatsService$1;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLogStateAfterAudioSinkDisabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

.field public final mLogStateAfterAudioSinkEnabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

.field public final synthetic this$0:Lcom/android/server/display/ExternalDisplayStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 3
    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    .line 6
    new-instance p1, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ExternalDisplayStatsService$1;I)V

    .line 12
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkEnabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    .line 14
    new-instance p1, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p1, p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ExternalDisplayStatsService$1;I)V

    .line 20
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkDisabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    .line 22
    return-void
.end method


# virtual methods
.method public final onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 12
    const-string v1, "ExternalDisplayStatsService"

    .line 14
    if-eqz v0, :cond_4

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 22
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    .line 29
    move-result v3

    .line 30
    const-string v4, " type="

    .line 32
    const-string v5, " isSink="

    .line 34
    const-string v6, " isActive="

    .line 36
    if-eqz v3, :cond_3

    .line 38
    if-eqz v2, :cond_3

    .line 40
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->isSink()Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_3

    .line 46
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 49
    move-result v3

    .line 50
    const/16 v7, 0x9

    .line 52
    if-eq v3, v7, :cond_1

    .line 54
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 57
    move-result v3

    .line 58
    const/16 v7, 0xa

    .line 60
    if-eq v3, v7, :cond_1

    .line 62
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 65
    move-result v3

    .line 66
    const/16 v7, 0xb

    .line 68
    if-ne v3, v7, :cond_3

    .line 70
    :cond_1
    sget-boolean p1, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 72
    if-eqz p1, :cond_2

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v3, "isExternalDisplayUsedForAudio: use "

    .line 79
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    .line 95
    move-result v0

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->isSink()Z

    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 115
    move-result v0

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_2
    const/4 p1, 0x1

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    sget-boolean v3, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 130
    if-eqz v3, :cond_0

    .line 132
    if-eqz v2, :cond_0

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v7, "isExternalDisplayUsedForAudio: drop "

    .line 139
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    .line 155
    move-result v0

    .line 156
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->isSink()Z

    .line 165
    move-result v0

    .line 166
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 175
    move-result v0

    .line 176
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    goto/16 :goto_0

    .line 188
    :cond_4
    const/4 p1, 0x0

    .line 189
    :goto_1
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 191
    if-eqz v0, :cond_5

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    const-string/jumbo v2, "scheduleAudioSinkChange: mIsExternalDisplayUsedForAudio="

    .line 198
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 203
    iget-boolean v2, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    const-string v2, " isAudioOnExternalDisplay="

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 220
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 225
    iget-object v0, v0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 227
    iget-object v0, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    .line 229
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkEnabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    .line 231
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 236
    iget-object v0, v0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 238
    iget-object v0, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    .line 240
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkDisabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    .line 242
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    if-eqz p1, :cond_6

    .line 247
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkEnabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    .line 249
    goto :goto_2

    .line 250
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkDisabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    .line 252
    :goto_2
    if-eqz p1, :cond_7

    .line 254
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 256
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 258
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    .line 260
    const-wide/16 v1, 0x2710

    .line 262
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    goto :goto_3

    .line 266
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 268
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 270
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    .line 272
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    :goto_3
    return-void
.end method
