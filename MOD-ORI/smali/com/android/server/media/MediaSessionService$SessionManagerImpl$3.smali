.class public final Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field public final synthetic val$asSystemService:Z

.field public final synthetic val$direction:I

.field public final synthetic val$flags:I

.field public final synthetic val$opPackageName:Ljava/lang/String;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$pid:I

.field public final synthetic val$suggestedStream:I

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;ZLjava/lang/String;IIIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$asSystemService:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$opPackageName:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$uid:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$pid:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$suggestedStream:I

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$direction:I

    .line 17
    .line 18
    iput p8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$flags:I

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$packageName:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$asSystemService:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    :goto_0
    move-object v7, v0

    .line 24
    move v8, v1

    .line 25
    move v9, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$opPackageName:Ljava/lang/String;

    .line 28
    .line 29
    iget v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$uid:I

    .line 30
    .line 31
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$pid:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 37
    .line 38
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    .line 40
    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$suggestedStream:I

    .line 41
    .line 42
    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$direction:I

    .line 43
    .line 44
    iget v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$flags:I

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 55
    .line 56
    invoke-virtual/range {v3 .. v10}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "Cannot adjust volume: direction="

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$direction:I

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, ", suggestedStream="

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$suggestedStream:I

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, ", flags="

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$flags:I

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, ", packageName="

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$packageName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, ", uid="

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$uid:I

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v2, ", asSystemService="

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$asSystemService:Z

    .line 119
    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    const-string v1, "MediaSessionService"

    .line 128
    .line 129
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    :goto_2
    return-void
.end method
