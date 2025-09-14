.class public Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getInt(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    .line 4
    .line 5
    invoke-static {v0, p2, p1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    .line 4
    .line 5
    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    move-object p2, p0

    .line 12
    :cond_0
    return-object p2
.end method

.method public putInt(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 24
    .line 25
    invoke-static {p0, p2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mUserId:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 24
    .line 25
    invoke-static {p0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
