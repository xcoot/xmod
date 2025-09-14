.class public final synthetic Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService$LocalService;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:J

.field public final synthetic f$6:Landroid/content/ComponentName;

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$3:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$4:Ljava/util/List;

    .line 13
    .line 14
    iput-wide p6, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$5:J

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$6:Landroid/content/ComponentName;

    .line 17
    .line 18
    iput p9, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$7:I

    .line 19
    .line 20
    iput p10, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$8:I

    .line 21
    .line 22
    iput-object p11, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$9:Ljava/util/ArrayList;

    .line 23
    .line 24
    iput p12, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$10:I

    .line 25
    .line 26
    iput p13, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$11:I

    .line 27
    .line 28
    iput p14, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$12:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$1:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$3:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$4:Ljava/util/List;

    .line 12
    .line 13
    iget-wide v6, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$5:J

    .line 14
    .line 15
    iget-object v8, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$6:Landroid/content/ComponentName;

    .line 16
    .line 17
    iget v9, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$7:I

    .line 18
    .line 19
    iget v10, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$8:I

    .line 20
    .line 21
    iget-object v11, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$9:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget v12, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$10:I

    .line 24
    .line 25
    iget v13, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$11:I

    .line 26
    .line 27
    iget v14, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;->f$12:I

    .line 28
    .line 29
    move-object/from16 v0, p1

    .line 30
    .line 31
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v15, v0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 37
    .line 38
    move-object v0, v1

    .line 39
    move v1, v2

    .line 40
    move-object v2, v3

    .line 41
    move-object v3, v15

    .line 42
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
