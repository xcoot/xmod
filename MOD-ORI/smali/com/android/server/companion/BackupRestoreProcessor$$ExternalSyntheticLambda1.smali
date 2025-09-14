.class public final synthetic Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/companion/AssociationInfo;


# direct methods
.method public synthetic constructor <init>(ILandroid/companion/AssociationInfo;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;->f$0:Landroid/companion/AssociationInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;->f$0:Landroid/companion/AssociationInfo;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/companion/AssociationInfo;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationTag()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getTag()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getTag()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move p0, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    move p0, v2

    .line 48
    :goto_1
    if-eqz v0, :cond_2

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v2, v3

    .line 54
    :goto_2
    return v2

    .line 55
    :pswitch_0
    check-cast p1, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-ne p1, p0, :cond_3

    .line 66
    .line 67
    const/4 p0, 0x1

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const/4 p0, 0x0

    .line 70
    :goto_3
    return p0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
