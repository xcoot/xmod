.class public final Lcom/android/server/am/BroadcastFilter;
.super Landroid/content/IntentFilter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final exported:Z

.field public final featureId:Ljava/lang/String;

.field public final instantApp:Z

.field public final owningUid:I

.field public final owningUserId:I

.field public final packageName:Ljava/lang/String;

.field public final receiverId:Ljava/lang/String;

.field public final receiverList:Lcom/android/server/am/ReceiverList;

.field public final requiredPermission:Ljava/lang/String;

.field public final visibleToInstantApp:Z


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Lcom/android/server/am/ReceiverList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/am/BroadcastFilter;->featureId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/am/BroadcastFilter;->receiverId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 13
    .line 14
    iput p7, p0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    .line 15
    .line 16
    iput p8, p0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    .line 17
    .line 18
    iput-boolean p9, p0, Lcom/android/server/am/BroadcastFilter;->instantApp:Z

    .line 19
    .line 20
    iput-boolean p10, p0, Lcom/android/server/am/BroadcastFilter;->visibleToInstantApp:Z

    .line 21
    .line 22
    iput-boolean p11, p0, Lcom/android/server/am/BroadcastFilter;->exported:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    const-wide v0, 0x10b00000001L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, v0, v1}, Landroid/content/IntentFilter;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-wide v1, 0x10900000002L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-wide v1, 0x10900000003L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-wide v0, 0x10500000004L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    iget p0, p0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BroadcastFilter{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x20

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "/u"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 p0, 0x7d

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
