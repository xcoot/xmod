.class public final Lcom/android/server/wm/TaskPersister$RecentTaskFile;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFile:Ljava/io/File;

.field public final mTaskId:I

.field public final mXmlContent:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mTaskId:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mFile:Ljava/io/File;

    .line 7
    .line 8
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mXmlContent:Ljava/io/ByteArrayInputStream;

    .line 22
    .line 23
    return-void
.end method
