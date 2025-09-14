.class public final synthetic Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/BrailleDisplayConnection;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/BrailleDisplayConnection;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/BrailleDisplayConnection;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;->f$1:[B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/BrailleDisplayConnection;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;->f$1:[B

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/accessibility/BrailleDisplayConnection;->sConnectedNodes:Ljava/util/Set;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v1, v0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string v1, "BrailleDisplayConnection"

    .line 18
    .line 19
    const-string v2, "Error writing to connected Braille display"

    .line 20
    .line 21
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
