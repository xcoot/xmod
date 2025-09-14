.class public final Lcom/android/server/contentprotection/ContentProtectionConsentManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mCachedContentProtectionUserConsent:Z

.field public volatile mCachedPackageVerifierConsent:Z

.field public final mContentObserver:Landroid/database/ContentObserver;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDevicePolicyCache:Landroid/app/admin/DevicePolicyCache;

.field public final mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/app/admin/DevicePolicyCache;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mDevicePolicyCache:Landroid/app/admin/DevicePolicyCache;

    .line 7
    .line 8
    const-class p3, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 9
    .line 10
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    check-cast p3, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 17
    .line 18
    new-instance p3, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;

    .line 19
    .line 20
    invoke-direct {p3, p0, p1}, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;-><init>(Lcom/android/server/contentprotection/ContentProtectionConsentManager;Landroid/os/Handler;)V

    .line 21
    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 24
    .line 25
    const-string/jumbo p1, "package_verifier_user_consent"

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, -0x1

    .line 34
    invoke-virtual {p2, v0, v1, p3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v0, "content_protection_user_consent"

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p2, v3, v1, p3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 p3, 0x1

    .line 52
    if-lt p1, p3, :cond_0

    .line 53
    .line 54
    move p1, p3

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move p1, v1

    .line 57
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedPackageVerifierConsent:Z

    .line 58
    .line 59
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-ltz p1, :cond_1

    .line 64
    .line 65
    move v1, p3

    .line 66
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedContentProtectionUserConsent:Z

    .line 67
    .line 68
    return-void
.end method
