.class public Lcom/android/server/updates/EmergencyNumberDbInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
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
    const-string v2, "/data/misc/emergencynumberdb"

    .line 8
    .line 9
    const-string v3, "emergency_number_db"

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
    const-string p0, "EmergencyNumberDbInstallReceiver"

    .line 2
    .line 3
    const-string v0, "Emergency number database is updated in file partition"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string/jumbo p0, "phone"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->notifyOtaEmergencyNumberDbInstalled()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
