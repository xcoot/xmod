.class Lcom/android/server/display/PersistentDataStore$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/AtomicFile;

    .line 6
    new-instance v1, Ljava/io/File;

    .line 8
    const-string v2, "/data/system/display-manager-state.xml"

    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v2, "display-state"

    .line 16
    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    .line 21
    return-void
.end method


# virtual methods
.method public final finishWrite(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/FileOutputStream;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 8
    return-void
.end method
