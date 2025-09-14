.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:[I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$0:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$1:Ljava/io/PrintWriter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$2:[I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$0:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$1:Ljava/io/PrintWriter;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$2:[I

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;->f$3:Z

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_3

    .line 18
    .line 19
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v4, "  Window #"

    .line 22
    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    aget v5, v2, v4

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v5, " "

    .line 33
    .line 34
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v5, ":"

    .line 41
    .line 42
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    if-nez p0, :cond_2

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move p0, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    move p0, v3

    .line 61
    :goto_1
    const-string v0, "    "

    .line 62
    .line 63
    invoke-virtual {p1, v1, v0, p0}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    aget p0, v2, v4

    .line 67
    .line 68
    add-int/2addr p0, v3

    .line 69
    aput p0, v2, v4

    .line 70
    .line 71
    :cond_3
    return-void
.end method
