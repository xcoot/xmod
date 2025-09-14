.class public final Lcom/android/server/location/nsflp/NSConnectionRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public componentName:Ljava/lang/String;

.field public connectedTime:J

.field public connectionCount:I

.field public disconnectedTime:J

.field public disconnectionCount:I

.field public final logTag:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public prevComponentName:Ljava/lang/String;

.field public prevPackageName:Ljava/lang/String;

.field public serviceBindingDiedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/location/nsflp/NSConnectionRecord$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/location/nsflp/NSConnectionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    .line 18
    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectedTime:J

    .line 20
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    .line 21
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->serviceBindingDiedTime:J

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->logTag:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectedTime:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->serviceBindingDiedTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    .line 7
    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectedTime:J

    .line 9
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    .line 10
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->serviceBindingDiedTime:J

    .line 11
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->logTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "tag="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->logTag:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "_prevComp="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "_comp="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "_connCnt="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "_discCnt="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "_discTime="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-wide v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "_discDur="

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-wide v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectedTime:J

    .line 71
    iget-wide v3, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    .line 73
    cmp-long v5, v1, v3

    .line 75
    if-ltz v5, :cond_0

    .line 77
    sub-long/2addr v1, v3

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-wide/16 v1, 0x0

    .line 81
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "_bindDiedTime="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-wide v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->serviceBindingDiedTime:J

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->logTag:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectedTime:J

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->serviceBindingDiedTime:J

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    return-void
.end method
