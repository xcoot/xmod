.class public Lcom/android/server/updates/ApnDbInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final UPDATE_APN_DB:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    .line 3
    const-string/jumbo v1, "update_db"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/updates/ApnDbInstallReceiver;->UPDATE_APN_DB:Landroid/net/Uri;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "metadata/"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "version"

    .line 5
    .line 6
    .line 7
    const-string v2, "/data/misc/apns/"

    .line 8
    .line 9
    const-string v3, "apns-conf.xml"

    .line 10
    .line 11
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final postInstall(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p1, Lcom/android/server/updates/ApnDbInstallReceiver;->UPDATE_APN_DB:Landroid/net/Uri;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method
