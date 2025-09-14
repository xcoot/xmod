.class public final Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PROVIDER_PACKAGE:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "resume_on_reboot_service_package"

    .line 2
    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    const-string/jumbo v2, "ota"

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->PROVIDER_PACKAGE:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    return-void
.end method
