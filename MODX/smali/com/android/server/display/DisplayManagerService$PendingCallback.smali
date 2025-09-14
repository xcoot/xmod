.class public final Lcom/android/server/display/DisplayManagerService$PendingCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbackRecord:Lcom/android/server/display/DisplayManagerService$CallbackRecord;

.field public final mDisplayEvents:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$CallbackRecord;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$PendingCallback;->mCallbackRecord:Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$PendingCallback;->mDisplayEvents:Ljava/util/ArrayList;

    .line 13
    new-instance p0, Landroid/util/Pair;

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p2

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p3

    .line 23
    invoke-direct {p0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public final addDisplayEvent(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$PendingCallback;->mDisplayEvents:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/util/Pair;

    .line 15
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v1

    .line 23
    if-ne v1, p1, :cond_0

    .line 25
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v0

    .line 33
    if-ne v0, p2, :cond_0

    .line 35
    return-void

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$PendingCallback;->mDisplayEvents:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Landroid/util/Pair;

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object p1

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p2

    .line 48
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public final sendPendingDisplayEvent()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$PendingCallback;->mDisplayEvents:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$PendingCallback;->mDisplayEvents:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/util/Pair;

    .line 18
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 20
    const-string v3, "DisplayManagerService"

    .line 22
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$PendingCallback;->mCallbackRecord:Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 24
    if-eqz v2, :cond_0

    .line 26
    const-string v2, "Send pending display event #"

    .line 28
    const-string v5, " "

    .line 30
    invoke-static {v0, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object v2

    .line 34
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string v5, "/"

    .line 41
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 46
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v6, " to "

    .line 51
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v6, v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 56
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v5, v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 64
    invoke-static {v2, v5, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 67
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 69
    check-cast v2, Ljava/lang/Integer;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result v2

    .line 75
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 77
    check-cast v1, Ljava/lang/Integer;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 82
    move-result v1

    .line 83
    invoke-virtual {v4, v2, v1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(II)Z

    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "Drop pending events for dead process "

    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    iget v1, v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 98
    invoke-static {v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$PendingCallback;->mDisplayEvents:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 110
    return-void
.end method
