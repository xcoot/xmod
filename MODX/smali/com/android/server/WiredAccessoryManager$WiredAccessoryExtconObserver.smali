.class public final Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;
.super Lcom/android/server/ExtconUEventObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 3
    invoke-direct {p0}, Lcom/android/server/ExtconUEventObserver;-><init>()V

    .line 6
    const-string p0, "HDMI"

    .line 8
    const-string p1, "LINE-OUT"

    .line 10
    const-string v0, "HEADPHONE"

    .line 12
    const-string v1, "MICROPHONE"

    .line 14
    filled-new-array {v0, v1, p0, p1}, [Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public final onUEvent(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Landroid/os/UEventObserver$UEvent;)V
    .locals 6

    .line 1
    const-string v0, "NAME"

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "STATE"

    .line 9
    invoke-virtual {p2, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    const/4 v1, 0x0

    .line 14
    filled-new-array {v1, v1}, [I

    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    .line 20
    const-string v4, "HEADPHONE"

    .line 22
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-static {p2, v4, v3, v2}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit(Ljava/lang/String;Ljava/lang/String;I[I)V

    .line 32
    :cond_0
    iget-object v3, p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    .line 34
    const-string v4, "MICROPHONE"

    .line 36
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    const/4 v5, 0x1

    .line 41
    if-eqz v3, :cond_1

    .line 43
    invoke-static {p2, v4, v5, v2}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit(Ljava/lang/String;Ljava/lang/String;I[I)V

    .line 46
    :cond_1
    iget-object v3, p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    .line 48
    const-string v4, "HDMI"

    .line 50
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 56
    const/16 v3, 0x10

    .line 58
    invoke-static {p2, v4, v3, v2}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit(Ljava/lang/String;Ljava/lang/String;I[I)V

    .line 61
    :cond_2
    iget-object p1, p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    .line 63
    const-string v3, "LINE-OUT"

    .line 65
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 71
    const/16 p1, 0x20

    .line 73
    invoke-static {p2, v3, p1, v2}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit(Ljava/lang/String;Ljava/lang/String;I[I)V

    .line 76
    :cond_3
    aget p1, v2, v1

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object p1

    .line 82
    aget p2, v2, v5

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object p2

    .line 88
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_4

    .line 94
    iget-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 96
    iget-object p2, p2, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 98
    monitor-enter p2

    .line 99
    :try_start_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 101
    check-cast v1, Ljava/lang/Integer;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 106
    move-result v1

    .line 107
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 109
    check-cast p1, Ljava/lang/Integer;

    .line 111
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 114
    move-result p1

    .line 115
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 117
    iget v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 119
    not-int v3, p1

    .line 120
    and-int/2addr v3, v1

    .line 121
    not-int v3, v3

    .line 122
    and-int/2addr v2, v3

    .line 123
    and-int/2addr p1, v1

    .line 124
    or-int/2addr p1, v2

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/android/server/WiredAccessoryManager;->updateLocked(ILjava/lang/String;)V

    .line 128
    monitor-exit p2

    .line 129
    goto :goto_0

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    throw p0

    .line 133
    :cond_4
    :goto_0
    return-void
.end method
