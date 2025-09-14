.class public final Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public input:Ljava/io/InputStream;

.field public parser:Lorg/xmlpull/v1/XmlPullParser;


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->input:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
