.class public abstract Lcom/android/server/pm/UserManagerInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final USER_ASSIGNMENT_RESULT_FAILURE:I = -0x1

.field public static final USER_ASSIGNMENT_RESULT_SUCCESS_ALREADY_VISIBLE:I = 0x3

.field public static final USER_ASSIGNMENT_RESULT_SUCCESS_INVISIBLE:I = 0x2

.field public static final USER_ASSIGNMENT_RESULT_SUCCESS_VISIBLE:I = 0x1

.field public static final USER_START_MODE_BACKGROUND:I = 0x2

.field public static final USER_START_MODE_BACKGROUND_VISIBLE:I = 0x3

.field public static final USER_START_MODE_FOREGROUND:I = 0x1


# direct methods
.method public static userStartModeToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    const-string v1, "USER_START_MODE_"

    .line 4
    .line 5
    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public abstract addMaintenanceModeLifecycleListener(Lcom/android/server/locksettings/LockSettingsService$1;)V
.end method

.method public abstract addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V
.end method

.method public abstract addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V
.end method

.method public abstract addUserVisibilityListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V
.end method

.method public abstract assignUserToDisplayOnStart(IIII)I
.end method

.method public abstract clearAttributes(II)Z
.end method

.method public abstract createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
.end method

.method public abstract exists(I)Z
.end method

.method public abstract getAttributes(I)I
.end method

.method public abstract getBootUser(Z)I
.end method

.method public abstract getCommunalProfileId()I
.end method

.method public abstract getLauncherUserInfo(I)Landroid/content/pm/LauncherUserInfo;
.end method

.method public abstract getMainDisplayAssignedToUser(I)I
.end method

.method public abstract getMainUserId()I
.end method

.method public abstract getProfileIds(IZ)[I
.end method

.method public abstract getProfileParentId(I)I
.end method

.method public abstract getUserAssignedToDisplay(I)I
.end method

.method public abstract getUserIds()[I
.end method

.method public abstract getUserInfo(I)Landroid/content/pm/UserInfo;
.end method

.method public abstract getUserInfos()[Landroid/content/pm/UserInfo;
.end method

.method public abstract getUserProperties(I)Landroid/content/pm/UserProperties;
.end method

.method public abstract getUserRestriction(ILjava/lang/String;)Z
.end method

.method public abstract getUserTypesForStatsd([I)[I
.end method

.method public abstract getUsers(Z)Ljava/util/List;
.end method

.method public abstract hasUserRestriction(Ljava/lang/String;I)Z
.end method

.method public abstract isDeviceManaged()Z
.end method

.method public abstract isProfileAccessible(IILjava/lang/String;Z)Z
.end method

.method public abstract isUserInitialized(I)Z
.end method

.method public abstract isUserManaged(I)Z
.end method

.method public abstract isUserRunning(I)Z
.end method

.method public abstract isUserUnlocked(I)Z
.end method

.method public abstract isUserUnlockingOrUnlocked(I)Z
.end method

.method public abstract isUserVisible(I)Z
.end method

.method public abstract isUserVisible(II)Z
.end method

.method public abstract onEphemeralUserStop(I)V
.end method

.method public abstract onSystemUserVisibilityChanged()V
.end method

.method public abstract removeUserEvenWhenDisallowed(I)Z
.end method

.method public abstract removeUserLifecycleListener(Lcom/android/server/pm/PackageManagerShellCommand$4;)V
.end method

.method public abstract removeUserState(I)V
.end method

.method public abstract setAttributes(II)Z
.end method

.method public abstract setDefaultCrossProfileIntentFilters(II)V
.end method

.method public abstract setDeviceManaged(Z)V
.end method

.method public abstract setDevicePolicyUserRestrictions(Landroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;)V
.end method

.method public abstract setForceEphemeralUsers(Z)V
.end method

.method public abstract setUserIcon(ILandroid/graphics/Bitmap;)V
.end method

.method public abstract setUserManaged(IZ)V
.end method

.method public abstract setUserRestriction(ILjava/lang/String;Z)V
.end method

.method public abstract setUserState(II)V
.end method

.method public abstract shouldIgnorePrepareStorageErrors(I)Z
.end method

.method public abstract unassignUserFromDisplayOnStop(I)V
.end method
