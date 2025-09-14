.class public final Lcom/android/server/CertBlacklister$BlacklistObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mKey:Ljava/lang/String;

.field public final mPath:Ljava/lang/String;

.field public final mTmpDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mKey:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p2, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/CertBlacklister$BlacklistObserver$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/CertBlacklister$BlacklistObserver$1;-><init>(Lcom/android/server/CertBlacklister$BlacklistObserver;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
