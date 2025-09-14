.class public final synthetic Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/MediaFocusControl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/MediaFocusControl;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/MediaFocusControl;

    .line 6
    iput p2, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    iput-boolean p3, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$2:Z

    .line 10
    iput-boolean p4, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$3:Z

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/MediaFocusControl;

    .line 3
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$1:I

    .line 5
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$2:Z

    .line 7
    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$3:Z

    .line 9
    check-cast p1, Lcom/android/server/audio/FocusRequester;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string v3, "MediaFocusControl"

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v5, "focusRequester.getClientId()="

    .line 21
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v5, p1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 26
    invoke-static {v4, v5, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput v1, p1, Lcom/android/server/audio/FocusRequester;->mDevice:I

    .line 31
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 33
    monitor-enter v3

    .line 34
    if-eqz v1, :cond_1

    .line 36
    :try_start_0
    iget v4, v0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 38
    if-ne v1, v4, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 46
    move-result-object v0

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_4

    .line 50
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 56
    move-result-object v0

    .line 57
    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    .line 60
    move-result v1

    .line 61
    const/4 v4, 0x0

    .line 62
    if-nez v1, :cond_3

    .line 64
    const/4 v1, 0x1

    .line 65
    if-eqz v2, :cond_2

    .line 67
    if-nez p0, :cond_2

    .line 69
    const-string p0, "MediaFocusControl"

    .line 71
    const-string/jumbo v2, "pin app playing"

    .line 74
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lcom/android/server/audio/FocusRequester;

    .line 83
    invoke-virtual {p0, v1, p1, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const-string p0, "MediaFocusControl"

    .line 89
    const-string/jumbo v2, "pin app paused"

    .line 92
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1, v1, p1, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 98
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Lcom/android/server/audio/FocusRequester;

    .line 104
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_4

    .line 110
    if-eqz p0, :cond_4

    .line 112
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 114
    const/4 v2, 0x3

    .line 115
    if-ne v1, v2, :cond_4

    .line 117
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 120
    move-result-object v1

    .line 121
    move-object v4, v1

    .line 122
    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 124
    goto :goto_3

    .line 125
    :cond_3
    :goto_2
    move-object p0, v4

    .line 126
    :cond_4
    :goto_3
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    if-eqz v4, :cond_5

    .line 131
    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_5
    if-eqz p0, :cond_6

    .line 136
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_6
    monitor-exit v3

    .line 140
    return-void

    .line 141
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    throw p0
.end method
