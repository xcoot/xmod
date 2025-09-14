.class public final Lcom/android/server/asks/InstalledAppInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public accessibility:Ljava/lang/String;

.field public execute:Ljava/lang/String;

.field public hasReqInstallPEM:Ljava/lang/String;

.field public initPkg:Ljava/lang/String;

.field public initType:Ljava/lang/String;

.field public installAuthority:Ljava/lang/String;

.field public installAuthorityDate:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public overlay:Ljava/lang/String;

.field public requestInstallerZip:Ljava/lang/String;

.field public signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "allow"

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 13
    .line 14
    const-string/jumbo v1, "block"

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 18
    .line 19
    const-string/jumbo v1, "false"

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    .line 23
    .line 24
    const-string/jumbo v2, "warning"

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "NA"

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method
