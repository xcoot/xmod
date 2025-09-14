.class public final synthetic Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/DeviceIdleController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    .line 5
    iput p2, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    .line 7
    iput p3, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    .line 8
    iget v1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    .line 10
    iget p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 14
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 20
    move-result p0

    .line 21
    xor-int/2addr p0, v2

    .line 22
    return p0

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    .line 25
    iget v1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    .line 27
    iget p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    .line 29
    check-cast p1, Ljava/lang/String;

    .line 31
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 37
    move-result p0

    .line 38
    xor-int/2addr p0, v2

    .line 39
    return p0

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    .line 42
    iget v1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    .line 44
    iget p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    .line 46
    check-cast p1, Ljava/lang/String;

    .line 48
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 54
    move-result p0

    .line 55
    xor-int/2addr p0, v2

    .line 56
    return p0

    .line 57
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    .line 59
    iget v1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    .line 61
    iget p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    .line 63
    check-cast p1, Ljava/lang/String;

    .line 65
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 67
    const/4 v2, 0x1

    .line 68
    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 71
    move-result p0

    .line 72
    xor-int/2addr p0, v2

    .line 73
    return p0

    .line 74
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    .line 76
    iget v1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    .line 78
    iget p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    .line 80
    check-cast p1, Ljava/lang/String;

    .line 82
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 84
    const/4 v2, 0x1

    .line 85
    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 88
    move-result p0

    .line 89
    xor-int/2addr p0, v2

    .line 90
    return p0

    .line 91
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    .line 93
    iget v1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    .line 95
    iget p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    .line 97
    check-cast p1, Ljava/lang/String;

    .line 99
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 101
    const/4 v2, 0x1

    .line 102
    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 105
    move-result p0

    .line 106
    xor-int/2addr p0, v2

    .line 107
    return p0

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
