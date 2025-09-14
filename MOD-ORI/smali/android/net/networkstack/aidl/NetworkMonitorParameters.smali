.class public Landroid/net/networkstack/aidl/NetworkMonitorParameters;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public linkProperties:Landroid/net/LinkProperties;

.field public networkAgentConfig:Landroid/net/NetworkAgentConfig;

.field public networkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/networkstack/aidl/NetworkMonitorParameters$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    invoke-direct {p0, v0}, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v1}, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    .line 15
    .line 16
    iget-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    .line 17
    .line 18
    iget-object v3, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 28
    .line 29
    iget-object v3, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 30
    .line 31
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget-object p0, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    .line 39
    .line 40
    iget-object p1, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    .line 41
    .line 42
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_5

    .line 47
    .line 48
    return v1

    .line 49
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4
    .line 5
    iget-object p0, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    .line 6
    .line 7
    filled-new-array {v0, v1, p0}, [Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const-string v3, "Overflow in the size of parcelable"

    .line 11
    .line 12
    const v4, 0x7fffffff

    .line 13
    .line 14
    .line 15
    if-lt v1, v2, :cond_7

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    if-lt v2, v1, :cond_1

    .line 23
    .line 24
    sub-int/2addr v4, v1

    .line 25
    if-gt v0, v4, :cond_0

    .line 26
    .line 27
    :goto_0
    add-int/2addr v0, v1

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 33
    .line 34
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    :try_start_1
    sget-object v2, Landroid/net/NetworkAgentConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/net/NetworkAgentConfig;

    .line 45
    .line 46
    iput-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 49
    .line 50
    .line 51
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    sub-int/2addr v2, v0

    .line 53
    if-lt v2, v1, :cond_3

    .line 54
    .line 55
    sub-int/2addr v4, v1

    .line 56
    if-gt v0, v4, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 60
    .line 61
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_3
    :try_start_2
    sget-object v2, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 72
    .line 73
    iput-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 76
    .line 77
    .line 78
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    sub-int/2addr v2, v0

    .line 80
    if-lt v2, v1, :cond_5

    .line 81
    .line 82
    sub-int/2addr v4, v1

    .line 83
    if-gt v0, v4, :cond_4

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 87
    .line 88
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_5
    :try_start_3
    sget-object v2, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroid/net/LinkProperties;

    .line 99
    .line 100
    iput-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    .line 102
    sub-int/2addr v4, v1

    .line 103
    if-gt v0, v4, :cond_6

    .line 104
    .line 105
    add-int/2addr v0, v1

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 111
    .line 112
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_1

    .line 118
    :cond_7
    :try_start_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 119
    .line 120
    const-string v2, "Parcelable too small"

    .line 121
    .line 122
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    :goto_1
    sub-int/2addr v4, v1

    .line 127
    if-le v0, v4, :cond_8

    .line 128
    .line 129
    new-instance p0, Landroid/os/BadParcelableException;

    .line 130
    .line 131
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_8
    add-int/2addr v0, v1

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "}"

    .line 7
    .line 8
    .line 9
    const-string v3, ", "

    .line 10
    .line 11
    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "networkAgentConfig: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    .line 23
    .line 24
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v2, "networkCapabilities: "

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 47
    .line 48
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string/jumbo v2, "linkProperties: "

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    .line 71
    .line 72
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 84
    .line 85
    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v1, "NetworkMonitorParameters"

    .line 89
    .line 90
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    .line 10
    .line 11
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 15
    .line 16
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    .line 20
    .line 21
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
