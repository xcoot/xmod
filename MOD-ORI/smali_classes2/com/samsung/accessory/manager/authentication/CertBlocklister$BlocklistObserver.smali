.class public final Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DBG:Z


# instance fields
.field public mBlocklist:Ljava/lang/String;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mKey:Ljava/lang/String;

.field public final mPath:Ljava/lang/String;

.field public final mTmpDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    const-string v1, "cover_pubkey_blocklist"

    .line 8
    .line 9
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p1, p0, v0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;-><init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
