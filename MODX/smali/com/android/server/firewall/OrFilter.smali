.class public final Lcom/android/server/firewall/OrFilter;
.super Lcom/android/server/firewall/FilterList;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/OrFilter$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/firewall/OrFilter$1;

    .line 3
    const-string/jumbo v1, "or"

    .line 6
    invoke-direct {v0, v1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    .line 9
    sput-object v0, Lcom/android/server/firewall/OrFilter;->FACTORY:Lcom/android/server/firewall/OrFilter$1;

    .line 11
    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, v0, Lcom/android/server/firewall/FilterList;->children:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v3

    .line 10
    if-ge v2, v3, :cond_1

    .line 12
    iget-object v3, v0, Lcom/android/server/firewall/FilterList;->children:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    move-object v4, v3

    .line 19
    check-cast v4, Lcom/android/server/firewall/Filter;

    .line 21
    move-object v5, p1

    .line 22
    move-object v6, p2

    .line 23
    move-object v7, p3

    .line 24
    move/from16 v8, p4

    .line 26
    move/from16 v9, p5

    .line 28
    move-object/from16 v10, p6

    .line 30
    move/from16 v11, p7

    .line 32
    invoke-interface/range {v4 .. v11}, Lcom/android/server/firewall/Filter;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 39
    return v0

    .line 40
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return v1
.end method
