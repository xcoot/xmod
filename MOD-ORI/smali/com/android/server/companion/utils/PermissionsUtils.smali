.class public abstract Lcom/android/server/companion/utils/PermissionsUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

.field public static sAppOpsService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.app.role.COMPANION_DEVICE_WATCH"

    .line 7
    .line 8
    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_WATCH"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    .line 14
    .line 15
    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_APP_STREAMING"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    .line 21
    .line 22
    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_AUTOMOTIVE_PROJECTION"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v1, "android.app.role.COMPANION_DEVICE_COMPUTER"

    .line 28
    .line 29
    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_COMPUTER"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v1, "android.app.role.COMPANION_DEVICE_GLASSES"

    .line 35
    .line 36
    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_GLASSES"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string v1, "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

    .line 42
    .line 43
    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_NEARBY_DEVICE_STREAMING"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 56
    .line 57
    return-void
.end method

.method public static checkPackage(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 3
    .line 4
    if-nez v1, :cond_1

    .line 5
    .line 6
    const-class v1, Lcom/android/server/companion/utils/PermissionsUtils;

    .line 7
    .line 8
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    sget-object v2, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string v2, "appops"

    .line 14
    .line 15
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sput-object v2, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit v1

    .line 29
    goto :goto_2

    .line 30
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    throw p0

    .line 32
    :cond_1
    :goto_2
    sget-object v1, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 33
    .line 34
    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    if-nez p0, :cond_2

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :catch_0
    :goto_3
    return v0
.end method

.method public static enforceCallerCanManageAssociationsForPackage(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    move v1, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v1, v2

    .line 23
    :goto_0
    const-string v4, "android.permission.MANAGE_COMPANION_DEVICES"

    .line 24
    .line 25
    invoke-virtual {p1, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    move v2, v3

    .line 32
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-ne p1, p0, :cond_4

    .line 37
    .line 38
    invoke-static {v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->checkPackage(ILjava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    if-eqz v2, :cond_5

    .line 45
    .line 46
    :cond_3
    return-void

    .line 47
    :cond_4
    if-eqz v1, :cond_5

    .line 48
    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    return-void

    .line 52
    :cond_5
    new-instance p1, Ljava/lang/SecurityException;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "Caller (uid="

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ") does not have permissions to "

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    if-eqz p3, :cond_6

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_6
    const-string/jumbo p3, "manage associations"

    .line 77
    .line 78
    .line 79
    :goto_1
    const-string v1, " for u"

    .line 80
    .line 81
    const-string v2, "/"

    .line 82
    .line 83
    invoke-static {p0, p3, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public static enforceCallerCanObserveDevicePresenceByUuid(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "android.permission.REQUEST_OBSERVE_DEVICE_UUID_PRESENCE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    new-instance v1, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p2, "Caller (uid="

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p2, ") does not have permissions to request observing device presence base on the UUID"

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public static enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const-string p1, "android.permission.INTERACT_ACROSS_USERS"

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public static enforcePermissionForCreatingAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lcom/android/server/companion/utils/PermissionsUtils;->DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0, v1, v2, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    const-string p1, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 52
    .line 53
    const-string p1, "Application does not hold android.permission.REQUEST_COMPANION_SELF_MANAGED"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    :goto_1
    return-void

    .line 60
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 61
    .line 62
    const-string p1, "Application must hold "

    .line 63
    .line 64
    const-string p2, " to associate with a device with "

    .line 65
    .line 66
    const-string v2, " profile."

    .line 67
    .line 68
    invoke-static {p1, v1, p2, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string p1, "Unsupported device profile: "

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0
.end method
