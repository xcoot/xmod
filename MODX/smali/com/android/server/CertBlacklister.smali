.class public final Lcom/android/server/CertBlacklister;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PUBKEY_PATH:Ljava/lang/String;

.field public static final SERIAL_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "ANDROID_DATA"

    .line 8
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "/misc/keychain/"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string/jumbo v1, "pubkey_blacklist.txt"

    .line 27
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    sput-object v1, Lcom/android/server/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    .line 33
    const-string/jumbo v1, "serial_blacklist.txt"

    .line 36
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/android/server/CertBlacklister;->SERIAL_PATH:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object p0

    .line 8
    const-string/jumbo p1, "pubkey_blacklist"

    .line 11
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/android/server/CertBlacklister$BlacklistObserver;

    .line 17
    sget-object v2, Lcom/android/server/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    .line 19
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/CertBlacklister$BlacklistObserver;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 26
    const-string/jumbo v0, "serial_blacklist"

    .line 29
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lcom/android/server/CertBlacklister$BlacklistObserver;

    .line 35
    sget-object v3, Lcom/android/server/CertBlacklister;->SERIAL_PATH:Ljava/lang/String;

    .line 37
    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/CertBlacklister$BlacklistObserver;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v1, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    return-void
.end method
