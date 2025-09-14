.class public final Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentprotection/ContentProtectionConsentManager;


# direct methods
.method public constructor <init>(Lcom/android/server/contentprotection/ContentProtectionConsentManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;->this$0:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 3

    .line 1
    const-string/jumbo p1, "content_protection_user_consent"

    .line 2
    .line 3
    .line 4
    const-string/jumbo p3, "package_verifier_user_consent"

    .line 5
    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_4

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-nez p3, :cond_2

    .line 30
    .line 31
    const-string p0, "Ignoring unexpected property: "

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "ContentProtectionConsentManager"

    .line 38
    .line 39
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;->this$0:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    .line 47
    invoke-static {p2, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-ltz p1, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move v0, v1

    .line 55
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedContentProtectionUserConsent:Z

    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;->this$0:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 61
    .line 62
    invoke-static {p1, p3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-lt p1, v0, :cond_5

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_5
    move v0, v1

    .line 70
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedPackageVerifierConsent:Z

    .line 71
    .line 72
    return-void
.end method
