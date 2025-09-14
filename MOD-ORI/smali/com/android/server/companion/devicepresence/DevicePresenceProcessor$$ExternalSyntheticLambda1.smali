.class public final synthetic Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/ParcelUuid;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelUuid;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;->f$0:Landroid/os/ParcelUuid;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;->f$0:Landroid/os/ParcelUuid;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;->f$1:I

    .line 9
    .line 10
    check-cast p1, Landroid/companion/DevicePresenceEvent;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x2

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/companion/DevicePresenceEvent;->getUuid()Landroid/os/ParcelUuid;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/companion/DevicePresenceEvent;->getAssociationId()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-ne p1, p0, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;->f$0:Landroid/os/ParcelUuid;

    .line 40
    .line 41
    iget p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;->f$1:I

    .line 42
    .line 43
    check-cast p1, Landroid/companion/DevicePresenceEvent;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/companion/DevicePresenceEvent;->getUuid()Landroid/os/ParcelUuid;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/companion/DevicePresenceEvent;->getAssociationId()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-ne p1, p0, :cond_1

    .line 66
    .line 67
    const/4 p0, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 p0, 0x0

    .line 70
    :goto_1
    return p0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
