.class public final Lcom/android/server/asks/safeInstall/SafeInstallVo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final baseCodePath:Ljava/lang/String;

.field public final downloadUrl:Ljava/lang/String;

.field public final initiatingPackageName:Ljava/lang/String;

.field public final originalInstallerPackageName:Ljava/lang/String;

.field public final originatingPackageName:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final permList:[Ljava/lang/String;

.field public final referralUrl:Ljava/lang/String;

.field public final safeInstallCert:Ljava/lang/String;

.field public final safeInstallToken:Ljava/lang/String;

.field public final sdkVersion:I

.field public final servicePermList:[Ljava/lang/String;

.field public final signatures:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->packageName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->permList:[Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->servicePermList:[Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->baseCodePath:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->signatures:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->initiatingPackageName:Ljava/lang/String;

    .line 16
    iput-object p7, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->originatingPackageName:Ljava/lang/String;

    .line 18
    iput-object p8, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->originalInstallerPackageName:Ljava/lang/String;

    .line 20
    iput p9, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->sdkVersion:I

    .line 22
    iput-object p10, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->referralUrl:Ljava/lang/String;

    .line 24
    iput-object p11, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->downloadUrl:Ljava/lang/String;

    .line 26
    iput-object p12, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->safeInstallToken:Ljava/lang/String;

    .line 28
    iput-object p13, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->safeInstallCert:Ljava/lang/String;

    .line 30
    return-void
.end method
