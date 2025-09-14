.class public final Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$directory:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->val$directory:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;->val$directory:Ljava/nio/file/Path;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 15
    .line 16
    return-object p0
.end method

.method public final visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 7
    .line 8
    return-object p0
.end method
