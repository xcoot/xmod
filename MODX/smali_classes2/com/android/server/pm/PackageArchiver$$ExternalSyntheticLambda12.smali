.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:Landroid/content/pm/ApplicationInfo;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$1:Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$5:Ljava/util/List;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$6:Ljava/util/concurrent/CompletableFuture;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$1:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$3:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$5:Ljava/util/List;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;->f$6:Ljava/util/concurrent/CompletableFuture;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v6, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v6, v1, v2, v3}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v4, v1, v3, v5}, Lcom/android/server/pm/PackageArchiver;->createArchiveStateInternal(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/android/server/pm/pkg/ArchiveState;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v4, v1, v3}, Lcom/android/server/pm/PackageArchiver;->storeArchiveState(Ljava/lang/String;Lcom/android/server/pm/pkg/ArchiveState;I)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method
