.class public final Lcom/android/server/media/MediaRouterService$UserRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClientGroupMap:Landroid/util/ArrayMap;

.field public final mClientRecords:Ljava/util/ArrayList;

.field public final mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

.field public mRouterState:Landroid/media/MediaRouterClientState;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    .line 18
    iput p2, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    .line 20
    new-instance p2, Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 22
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService;->mLooper:Landroid/os/Looper;

    .line 24
    invoke-direct {p2, p1, p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/os/Looper;)V

    .line 27
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 29
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, ""

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v0

    .line 24
    const-string v1, "  "

    .line 26
    if-eqz v0, :cond_0

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v0, :cond_1

    .line 31
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    const-string v5, "    mTrusted="

    .line 61
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    iget-boolean v5, v3, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    .line 66
    const-string v6, "    mRouteTypes=0x"

    .line 68
    invoke-static {v4, v5, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v4

    .line 72
    iget v5, v3, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    .line 74
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    const-string v5, "    mActiveScan="

    .line 92
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget-boolean v5, v3, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    .line 97
    const-string v6, "    mSelectedRouteId="

    .line 99
    invoke-static {v4, v5, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    move-result-object v4

    .line 103
    iget-object v3, v3, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 105
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 117
    goto :goto_0

    .line 118
    :cond_0
    const-string v0, "  <no clients>"

    .line 120
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    :cond_1
    const-string v0, "  State"

    .line 125
    const-string v2, "  mRouterState="

    .line 127
    invoke-static {p1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    move-result-object v0

    .line 131
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mRouterState:Landroid/media/MediaRouterClientState;

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/android/server/media/MediaRouterService$UserRecord$1;

    .line 145
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/media/MediaRouterService$UserRecord$1;-><init>(Lcom/android/server/media/MediaRouterService$UserRecord;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 148
    const-wide/16 v1, 0x3e8

    .line 150
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 152
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 155
    move-result p0

    .line 156
    if-nez p0, :cond_2

    .line 158
    const-string p0, "  <could not dump handler state>"

    .line 160
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    :cond_2
    return-void
.end method

.method public final removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    iget-object p2, v0, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    .line 20
    check-cast p2, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_0

    .line 28
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    .line 30
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "User "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
