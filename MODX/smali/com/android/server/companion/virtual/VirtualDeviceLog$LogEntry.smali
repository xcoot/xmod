.class public final Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceId:I

.field public final mOwnerUid:I

.field public final mTimestamp:J

.field public final mType:I


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mType:I

    .line 6
    iput p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mDeviceId:I

    .line 8
    iput-wide p4, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mTimestamp:J

    .line 10
    iput p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mOwnerUid:I

    .line 12
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "  "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcom/android/server/companion/virtual/VirtualDeviceLog;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 10
    iget-wide v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mTimestamp:J

    .line 12
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " - "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mType:I

    .line 30
    if-nez v1, :cond_0

    .line 32
    const-string v1, "START"

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v1, "CLOSE"

    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, " Device ID: "

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mDeviceId:I

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, " "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mOwnerUid:I

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, " ("

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p2, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mUidToPackagesCache:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->contains(I)Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 73
    iget-object p2, p2, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mUidToPackagesCache:Landroid/util/SparseArray;

    .line 75
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Ljava/lang/String;

    .line 81
    goto :goto_2

    .line 82
    :cond_1
    iget-object v1, p2, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 84
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_3

    .line 90
    array-length v2, v1

    .line 91
    if-lez v2, :cond_3

    .line 93
    const/4 v2, 0x0

    .line 94
    aget-object v2, v1, v2

    .line 96
    array-length v1, v1

    .line 97
    const/4 v3, 0x1

    .line 98
    if-le v1, v3, :cond_2

    .line 100
    const-string v1, ",..."

    .line 102
    invoke-static {v2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move-object v1, v2

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const-string v1, ""

    .line 111
    :goto_1
    iget-object p2, p2, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mUidToPackagesCache:Landroid/util/SparseArray;

    .line 113
    invoke-virtual {p2, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    move-object p0, v1

    .line 117
    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string p0, ")"

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 128
    return-void
.end method
