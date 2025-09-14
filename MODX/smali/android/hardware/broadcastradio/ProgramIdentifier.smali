.class public final Landroid/hardware/broadcastradio/ProgramIdentifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public type:I

.field public value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/broadcastradio/ProgramIdentifier$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    .line 11
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

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 11
    if-nez v2, :cond_2

    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 16
    iget v2, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    iget v3, p1, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_3

    .line 34
    return v1

    .line 35
    :cond_3
    iget-wide v2, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    move-result-object p0

    .line 41
    iget-wide v2, p1, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_4

    .line 53
    return v1

    .line 54
    :cond_4
    return v0
.end method

.method public final getStability()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Number;

    .line 4
    iget v1, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget-wide v1, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    move-result-object p0

    .line 19
    const/4 v1, 0x1

    .line 20
    aput-object p0, v0, v1

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 3
    const-string/jumbo v1, "{"

    .line 6
    const-string/jumbo v2, "}"

    .line 9
    const-string v3, ", "

    .line 11
    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v2, "type: "

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget v2, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 24
    invoke-static {v2}, Landroid/hardware/broadcastradio/IdentifierType$$;->toString(I)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v2, "value: "

    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iget-wide v2, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    .line 48
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "ProgramIdentifier"

    .line 62
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-wide v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 22
    move-result p0

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 26
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 29
    return-void
.end method
