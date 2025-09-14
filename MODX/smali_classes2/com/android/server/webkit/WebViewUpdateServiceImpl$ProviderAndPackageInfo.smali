.class public final Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final packageInfo:Landroid/content/pm/PackageInfo;

.field public final provider:Landroid/webkit/WebViewProviderInfo;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 7
    .line 8
    return-void
.end method
