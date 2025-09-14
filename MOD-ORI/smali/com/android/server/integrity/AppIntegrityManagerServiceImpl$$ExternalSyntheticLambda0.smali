.class public final synthetic Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    const-string/jumbo p0, "platform_compat"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v0, Lcom/android/internal/pm/parsing/PackageParser2;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/pm/parsing/PackageParserUtils$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/pm/parsing/PackageParserUtils$1;-><init>(Lcom/android/internal/compat/IPlatformCompat;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-direct {v0, p0, p0, p0, v1}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method
