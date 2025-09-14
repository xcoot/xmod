.class public final synthetic Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkScoreService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/NetworkScoreService;

    .line 6
    return-void
.end method


# virtual methods
.method public final getPackages(I)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/NetworkScoreService;

    .line 3
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 9
    const-string/jumbo p1, "use_open_wifi_package"

    .line 12
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 22
    filled-new-array {p0}, [Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return-object p0
.end method
