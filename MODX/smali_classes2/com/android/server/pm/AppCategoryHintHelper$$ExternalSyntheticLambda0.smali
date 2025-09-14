.class public final synthetic Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppCategoryHintHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppCategoryHintHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "AppCategoryHintHelper"

    .line 12
    .line 13
    const-string v0, "AppCategoryHintHelper is not initialized."

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;->User:Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppCategoryHintHelper;->writeAppCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;->Developer:Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppCategoryHintHelper;->writeAppCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
