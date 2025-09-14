.class public final Lcom/android/server/am/ActivityManagerShellCommand$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic val$recentConfigs:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$4;->val$recentConfigs:Landroid/util/ArrayMap;

    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Landroid/content/res/Configuration;

    .line 3
    check-cast p2, Landroid/content/res/Configuration;

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$4;->val$recentConfigs:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 13
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$4;->val$recentConfigs:Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Integer;

    .line 21
    invoke-virtual {p2, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 24
    move-result p0

    .line 25
    return p0
.end method
