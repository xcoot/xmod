.class public final Lcom/android/server/location/nsflp/LocationRequestInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public backgroundDuration:J

.field public backgroundTime:J

.field public interval:J

.field public isAllowed:Z

.field public isForeground:Z

.field public isHighPowerRequest:Z

.field public isListenerType:Z

.field public isPassive:Z

.field public isSystemApp:Z

.field public lastUpdateTime:J

.field public listenerId:Ljava/lang/String;

.field public maxWaitTime:J

.field public minUpdateInterval:J

.field public numUpdates:I

.field public packageName:Ljava/lang/String;

.field public pid:I

.field public provider:Ljava/lang/String;

.field public quality:I

.field public removedTime:J

.field public requestTime:J

.field public requester:I

.field public uid:I

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/location/nsflp/LocationRequestInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/location/nsflp/LocationRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
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
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ","

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    .line 35
    .line 36
    const-string v1, "]"

    .line 37
    .line 38
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundDuration:J

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    .line 45
    .line 46
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    .line 50
    .line 51
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    .line 55
    .line 56
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    .line 60
    .line 61
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    .line 80
    .line 81
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    .line 87
    .line 88
    int-to-byte p2, p2

    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    .line 91
    .line 92
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isSystemApp:Z

    .line 93
    .line 94
    int-to-byte p2, p2

    .line 95
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 96
    .line 97
    .line 98
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    .line 99
    .line 100
    int-to-byte p2, p2

    .line 101
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    .line 103
    .line 104
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    .line 105
    .line 106
    int-to-byte p2, p2

    .line 107
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    .line 109
    .line 110
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    .line 111
    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    .line 114
    .line 115
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    .line 116
    .line 117
    int-to-byte p0, p0

    .line 118
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    .line 120
    .line 121
    return-void
.end method
