.class public final Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>(Landroid/util/AtomicFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final finishWrite(Ljava/io/OutputStream;Z)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/io/FileOutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Ljava/io/FileOutputStream;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;->mAtomicFile:Landroid/util/AtomicFile;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "Unexpected OutputStream as argument: "

    .line 26
    .line 27
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method
