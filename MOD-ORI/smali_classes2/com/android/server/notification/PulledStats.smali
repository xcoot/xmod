.class public final Lcom/android/server/notification/PulledStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mTimePeriodEndMs:J

.field public final mTimePeriodStartMs:J

.field public final mUndecoratedPackageNames:Ljava/util/List;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodStartMs:J

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final toParcelFileDescriptor(I)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p1, v1, :cond_0

    .line 7
    .line 8
    const-string p0, "Unknown pulled stats request: "

    .line 9
    .line 10
    const-string v1, "PulledStats"

    .line 11
    .line 12
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/android/server/notification/PulledStats$1;

    .line 17
    .line 18
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/notification/PulledStats$1;-><init>(Lcom/android/server/notification/PulledStats;[Landroid/os/ParcelFileDescriptor;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 22
    .line 23
    .line 24
    :goto_0
    const/4 p0, 0x0

    .line 25
    aget-object p0, v0, p0

    .line 26
    .line 27
    return-object p0
.end method

.method public writeToProto(ILandroid/util/proto/ProtoOutputStream;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "Unknown pulled stats request: "

    .line 5
    .line 6
    const-string p2, "PulledStats"

    .line 7
    .line 8
    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    .line 13
    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    .line 32
    const-wide v0, 0x20b00000001L

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    const-wide v2, 0x10900000001L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    return-void
.end method
