.class public final Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCb:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 5
    .line 6
    iget-object v2, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-static {v1, p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$mremoveFocusEntryForExtPolicyOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge v2, v3, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 33
    .line 34
    iget-object v4, v3, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 35
    .line 36
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/util/Stack;

    .line 41
    .line 42
    iput-object v4, v3, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    .line 47
    .line 48
    invoke-static {v3, v4}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$mremoveFocusStackEntryOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 55
    .line 56
    iget-object v3, v2, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, v2, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 110
    .line 111
    iget-object v1, v1, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 112
    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 124
    .line 125
    iget-object v1, v1, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 134
    .line 135
    :cond_4
    :goto_2
    monitor-exit v0

    .line 136
    return-void

    .line 137
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    throw p0
.end method
