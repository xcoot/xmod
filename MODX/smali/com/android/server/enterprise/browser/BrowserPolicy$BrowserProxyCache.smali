.class public final Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAdminUid:I

.field public mProxySetting:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 10
    return-void
.end method
