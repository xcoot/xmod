.class public final Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    .line 4
    .line 5
    const-string v0, "cover_authentication_blocked"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mKey:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mKey:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string/jumbo p1, "true"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    .line 23
    .line 24
    sget-object p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    .line 25
    .line 26
    check-cast p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 29
    .line 30
    const/4 p1, 0x6

    .line 31
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "false"

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    sput-boolean p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    .line 45
    .line 46
    sget-object p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    .line 47
    .line 48
    check-cast p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 49
    .line 50
    const-wide/16 v1, 0x0

    .line 51
    .line 52
    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method
