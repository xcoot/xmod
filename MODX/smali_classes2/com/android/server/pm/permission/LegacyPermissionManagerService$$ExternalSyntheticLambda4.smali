.class public final synthetic Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    iget v5, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Grant permissions to Carrier Service app "

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, " for user:"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v0, "DefaultPermGrantPolicy"

    .line 40
    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    new-array v8, p0, [Ljava/util/Set;

    .line 46
    .line 47
    sget-object p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    aput-object p0, v8, v0

    .line 51
    .line 52
    iget-object v3, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZ[Ljava/util/Set;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 67
    .line 68
    iget v4, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 69
    .line 70
    iget-object v1, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "Granting permissions to active LUI app for user:"

    .line 78
    .line 79
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string v0, "DefaultPermGrantPolicy"

    .line 90
    .line 91
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x2

    .line 95
    new-array v6, p0, [Ljava/util/Set;

    .line 96
    .line 97
    sget-object p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    aput-object p0, v6, v0

    .line 101
    .line 102
    sget-object p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 103
    .line 104
    const/4 v0, 0x1

    .line 105
    aput-object p0, v6, v0

    .line 106
    .line 107
    const/4 v5, 0x1

    .line 108
    iget-object v2, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 109
    .line 110
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
