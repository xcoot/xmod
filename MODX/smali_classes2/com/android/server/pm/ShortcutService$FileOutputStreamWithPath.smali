.class Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
.super Ljava/io/FileOutputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->mFile:Ljava/io/File;

    .line 5
    .line 6
    return-void
.end method
